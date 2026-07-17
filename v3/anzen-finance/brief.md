# Agentic Audit Brief: Anzen Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 17 across 7 audit(s)
- Eligible audit results: 8 (7 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: UNKNOWN - TVL dropped 54.1% over 90 days

## Project Overview

- Project: Anzen Finance (`anzen-finance`)
- Website: [https://anzen.finance/](https://anzen.finance/)
- Lifecycle: unknown (Tier 0, 93.8% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, blast, ethereum, manta-pacific
- Contract surface: 66 unique implementations (163 raw deployments)
- Coverage basis: 4/30 confirmed own live verified implementations (13.3%); conservative 13.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $7,901,293.00
- On-chain TVL (included contracts): $454,484.58
- TVL by chain: Base $448,334.12 | Ethereum $6,150.46

## Project Description

This brief describes the observed EVM deployment and audit surface for Anzen Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 30 contract row(s) across arbitrum, base, blast, ethereum, manta-pacific. Structural roles: 15 supporting, 14 core, 1 unclassified. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 30
- Structural roles: supporting (15), core (14), unclassified (1)
- Contract kinds: contract (28), abstract (2)
- Detected standards: ownable (12), erc165 (10), erc20 (10), pausable (10), ownable2step (7), accesscontrol (5), erc20permit (4), erc1967proxy (1), erc4626 (1)
- Frameworks: openzeppelin (12), chainlink (5), axelar (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 35 contracts are derived from known codebases. 35 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xf6f0a051e4de63d9118a6bc948463a9d08e40a5c`, chain 81457)
- AnzenLayerZeroAdapter (`0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938`, chain 169)
- AnzenLayerZeroAdapter (`0xe31ee12bdfdd0573d634124611e85338e2cbf0cf`, chain 169)
- AnzenLayerZeroAdapter (`0x547213367cfb08ab418e7b54d7883b2c2aa27fd7`, chain 8453)
- AnzenLayerZeroAdapter (`0xdd216101d84d513a12cb7bfb109f7abcf330d58e`, chain 42161)
- AnzenLayerZeroAdapter (`0xe563eccd6790a42f9872e6a94b173810cfddac32`, chain 42161)
- AnzenLayerZeroAdapter (`0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938`, chain 81457)
- AnzenLayerZeroAdapter (`0x5a1b8c0e9fe27b9db4913df6b361dea5e96ea129`, chain 81457)
- AnzenToken (`0xd8a8f0f13300e81bf366bd87d972d3521ad48652`, chain 8453)
- ChildsUSDzV2 (`0x8f08a3b5bceadef10c0b26c8bb720ebb8fa91758`, chain 169)
- ChildsUSDzV2 (`0xe31ee12bdfdd0573d634124611e85338e2cbf0cf`, chain 8453)
- ChildsUSDzV2 (`0x1b2c29e3897b8f9170c98440a483e90e715c879d`, chain 42161)
- ChildsUSDzV2 (`0x73d23f3778a90be8846e172354a115543df2a7e4`, chain 81457)
- ChildUSDz (`0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938`, chain 8453)
- ChildUSDzV2 (`0x73d23f3778a90be8846e172354a115543df2a7e4`, chain 169)
- ChildUSDzV2 (`0x5018609ab477cc502e170a5accf5312b86a4b94f`, chain 42161)
- ChildUSDzV2 (`0x52056ed29fe015f4ba2e3b079d10c0b87f46e8c6`, chain 81457)
- EACAggregatorProxy (`0xe25969e2fa633a0c027fab8f30fc9c6a90d60b48`, chain 8453)
- GnosisSafeProxy (`0x20b15ee712b3c368af48ea5a59430be93a71eb3b`, chain 1)
- GnosisSafeProxy (`0x13649b6c7e177ffa373eeeeef485952843147210`, chain 169)
- GnosisSafeProxy (`0x18b7d4d572ffbf644cfc2659ed5d2a420e2ad582`, chain 169)
- GnosisSafeProxy (`0x18b7d4d572ffbf644cfc2659ed5d2a420e2ad582`, chain 8453)
- SafeProxy (`0x08fccc6213cb3843f8d270c4eefc7a09eb32b354`, chain 81457)
- SPCTPool (`0xf30a29f1c540724fd8c5c4be1af604a6c6800d29`, chain 1)
- SUSDz (`0x547213367cfb08ab418e7b54d7883b2c2aa27fd7`, chain 1)
- sUSDzOFTAdapter (`0x0c0dfff29e449b0a84f78cc7cdbbe0e31fdaf1b7`, chain 1)
- sUSDzUSDzExchangeRateChainlinkAdapter (`0x8047f61e4d8bd15f3a8ad0bf30b7882219c31869`, chain 1)
- TokenManagerProxy (`0xf6f0a051e4de63d9118a6bc948463a9d08e40a5c`, chain 1)
- TokenManagerProxy (`0xf6f0a051e4de63d9118a6bc948463a9d08e40a5c`, chain 8453)
- TransparentUpgradeableProxy (`0xeec468333ccc16d4bf1cef497a56cf8c0aae4ca3`, chain 8453)
- USDz (`0xa469b7ee9ee773642b3e93e842e5d9b5baa10067`, chain 1)
- Vault (`0x5a1b8c0e9fe27b9db4913df6b361dea5e96ea129`, chain 169)
- Vault (`0xd4cd16f8470ad3d72d06e344f2997d9e59cbbaac`, chain 8453)
- VaultV2 (`0x73d23f3778a90be8846e172354a115543df2a7e4`, chain 42161)
- VaultV2 (`0xf3588ea537b66ea59e9a0b0337abbd39d00cfe09`, chain 81457)

## Contract Surface Quality

- Logic-topography rows: 30; live-surface rows included: 30 (30 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 34/36 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/30 (13.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 31 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 35 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 12
- Confirmed-live implementations: 31 of 66 unique; 35 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/57
- Verified + Unaudited implementations: 53
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 66
- Raw deployments: 163
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 6 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 4 | 7.0% | 2024-12 |
| Halborn | Tier 2 | 3 | 5.3% | 2024-05 |
| PeckShield | Tier 2 | 2 | 3.5% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnzenToken | token | project_anchor | own_supporting | 1 | base | unit-379255 | 2 deployments: base `0xd8a8f0f13300e81bf366bd87d972d3521ad48652`; base `0xeec468333ccc16d4bf1cef497a56cf8c0aae4ca3` | ✅ Audited |
| ChildUSDz | unknown | project_anchor | own_supporting | 0 | base | unit-379239 | `0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938` | ✅ Audited |
| SPCTPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379218 | `0xf30a29f1c540724fd8c5c4be1af604a6c6800d29` | ✅ Audited |
| SUSDz | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379215 | `0x547213367cfb08ab418e7b54d7883b2c2aa27fd7` | ✅ Audited |

### ⚠️ Verified + Unaudited (53)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SPCTPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef5aacb3c38a5be7785a361008e27fb0328a62b5` | ⚠️ Unaudited |
| StakePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5eb20b02baff1dd21ddb42d5dd6c5620ee3f96b8`; base `0x83f27b8edfbc0ddde0c732477a2c8605bb0552f5` | ⚠️ Unaudited |
| USDzVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xa87c9808c0ebe20a1427b5c769623c77201f6f4d`; base `0xc34292764c78e54de568ef0f4d475944233eb526` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 42 deployments: base `0x00be872906c07d6d7d0ec3968b99c4e3d6bd552a`; base `0x04d3d700150e03ed1df763363d746f0e9dee3bdd`; base `0x05acfee2c0b4efbbce705932239a30613ace42f2`; base `0x19e6821ee47a4c23e5971febee29f78c2e514dc8`; base `0x233a45bf331b35440d45e9beb1fdf2fbb7b4e3d2`; base `0x29a0bf5d5e677d38f7abbd4d292895a3574796c0`; base `0x2c332178c0c9e4ec1dd75d35df5fdf42eefaca44`; base `0x3c6490e4c60bd8246071a014aace7a596d392642`; base `0x43f92e6805196fa6cd7a19f3d769957f95baa261`; base `0x4a61db12d0cb4293d799ecdd82e5994b5746f850`; base `0x4d1d9223b5d6806815506b9ba034dd35390aad68`; base `0x52d743436f6ba414050bd8869c8bf6537c355a00`; base `0x55012ef027ae9b4e2bb5a5f529e5a1184bcc998d`; base `0x61140c09956495f1ce49d28e125ed4035e1cae95`; base `0x63a3b4e2aeea2d1cc883987aec22e9aa88323b3c`; base `0x6f9829a2278a5b017b6e997e2bafcdbcb8d6bc04`; base `0x728bbcfe2817b4d19b3bdbd06cdd1ea257f6cca6`; base `0x74f70d08c92f1cd4ed70b9aa3f8edc0ba5496a01`; base `0x7779366444605bc5b31b4b01d14700d722b76c55`; base `0x801b6e7d186370eee854f76481643c22c7d1da99`; base `0x834ce448a994ca9f4cfe2bf0c6bb5ab7f24b8920`; base `0x84eff9466d371ccab94728e8bdfcd9bc095d7ca6`; base `0x851a369f1c7e3f82a2ae8d75ee94eabfd9781805`; base `0x852ae0b1af1aaedb0fc4428b4b24420780976ca8`; base `0x8eda55983ecbeb28ab02959aa9e7203e24ba8c19`; base `0xa1923f93b032bf2dfedcdfd0da93037d32c39f4d`; base `0xa24aafb9d49d0cf43dcd8a5f2442a30391f494d2`; base `0xa33eabc524b691f2d8e5a7ab46e79a6b0360486f`; base `0xa9bdecf007120ebb013e223d2a4eea4c8c35e7f1`; base `0xae4602716079c0be7948c0b84553dee0e6564a3d`; base `0xb5882f52428d10c99bbf56539c02820dda809ccf`; base `0xb76eecece7a7cbf10a55dc4284fb762577ee9e3d`; base `0xbbdcbc2c5610992d4acfbfef59d02ee8a7f145f5`; base `0xbf477e69a0adf91b6e3d6e70cb67e5d1a27e88e3`; base `0xc18cc9b106a50d945024f0a25eff16b6dc56d4b9`; base `0xc2b36eebe261eeec502dfe761ba8cdb0e9bc057b`; base `0xc73b7635630a94a3e9a595741cbb8a3845c27826`; base `0xc95cd3490be4af06f0a25435e21c2c91b988c482`; base `0xcad16df709bfe62d02cde5d4039684fa47dc216c`; base `0xd27766c20df630a7d7e1e5885ae581fb0e61828a`; base `0xec509c1f0791504667972d5ff705ae4bd2db500f`; base `0xf2d85ee7cd9e75f3ffff4b44ade48581d2dbdfdd` | ⚠️ Unaudited |
| AnzenGaugeControllerMainchainUpg | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x62cb5b7a0d86a462644e16a311aa1d9ddeacc39a`; base `0x9f6bc4537b36e57aa4ce769f519b52e42ca58eca` | ⚠️ Unaudited |
| AnzenGenericOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdfdc54f14a4783fe8e8ef7de7159744725877c88` | ⚠️ Unaudited |
| AnzenLayerZeroAdapter | adapter | project_anchor | own_supporting | 0 | manta-pacific | unit-379219 | `0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938` | ⚠️ Unaudited |
| AnzenLayerZeroAdapter | adapter | project_anchor | own_supporting | 0 | manta-pacific | unit-379227 | `0xe31ee12bdfdd0573d634124611e85338e2cbf0cf` | ⚠️ Unaudited |
| AnzenLayerZeroAdapter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-379231 | `0xdd216101d84d513a12cb7bfb109f7abcf330d58e` | ⚠️ Unaudited |
| AnzenLayerZeroAdapter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379232 | `0xe563eccd6790a42f9872e6a94b173810cfddac32` | ⚠️ Unaudited |
| AnzenLayerZeroAdapter | adapter | project_anchor | own_supporting | 0 | blast | unit-379233 | 3 deployments: base `0x547213367cfb08ab418e7b54d7883b2c2aa27fd7`; blast `0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938`; blast `0x5a1b8c0e9fe27b9db4913df6b361dea5e96ea129` | ⚠️ Unaudited |
| AnzenMsgSendEndpointUpg | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x22264d999286db15f56ec1f9fac563422cdb76d3`; base `0xf72307c115d35555c803cc889b4afd305684201d` | ⚠️ Unaudited |
| AnzenVotingControllerUpg | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x128ef61fdc9a36240b3372bd226479b66d63db38`; base `0xed85dc4a4924ce4554b5afa8f6bcad4420b00ada` | ⚠️ Unaudited |
| ChildsUSDzV2 | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-379226 | `0x8f08a3b5bceadef10c0b26c8bb720ebb8fa91758` | ⚠️ Unaudited |
| ChildsUSDzV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x024ae5eb7abd4f52ddd145f0fed446caebc5755b` | ⚠️ Unaudited |
| ChildsUSDzV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379228 | `0x1b2c29e3897b8f9170c98440a483e90e715c879d` | ⚠️ Unaudited |
| ChildsUSDzV2 | unknown | project_anchor | own_supporting | 0 | blast | unit-379237 | 2 deployments: base `0xe31ee12bdfdd0573d634124611e85338e2cbf0cf`; blast `0x73d23f3778a90be8846e172354a115543df2a7e4` | ⚠️ Unaudited |
| ChildUSDzV2 | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-379225 | `0x73d23f3778a90be8846e172354a115543df2a7e4` | ⚠️ Unaudited |
| ChildUSDzV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379229 | `0x5018609ab477cc502e170a5accf5312b86a4b94f` | ⚠️ Unaudited |
| ChildUSDzV2 | unknown | project_anchor | own_supporting | 0 | blast | unit-379235 | `0x52056ed29fe015f4ba2e3b079d10c0b87f46e8c6` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 40 deployments: base `0x0b68ac37a1668daaab1882543368e076c38c40e9`; base `0x12129aac52d6b0f0125677d4e1435633e61fd25f`; base `0x15364cb4d86783229e1552d28c597bda43e3feea`; base `0x30a76f4e688cf52f4a06d7aad987a7037f3ae6f7`; base `0x30fccfde9857b94b647f9a344c5f4baceab67d72`; base `0x35e9d7001819ea3b39da906ae6b06a62cfe2c181`; base `0x4b7836916781caafbb7bd1e5fdd20ed544b453b1`; base `0x4ec5970fc728c5f65ba413992cd5ff6fd70fcff0`; base `0x5e988c11a4f92155c30d9fb69ed75597f712b113`; base `0x64c911996d3c6ac71f9b455b1e8e7266bcbd848f`; base `0x67283a47e470afbccc4ac74ccc32401a81027691`; base `0x6f064e153e88220769ac715d9dab72c83ec9753c`; base `0x790181e93e9f4eedb5b864860c12e4d2cfffe73b`; base `0x79cf4a31b29d69191f0b6e97916eb93feb81e533`; base `0x7bafa1af54f17cc0775a1cf813b9ff5ded2c51e5`; base `0x7fced5198e43ec93ef2179dfc70a8dcf494dcb80`; base `0x8b2af39b53cbae18a81eeddfda29de9f19387716`; base `0x91d7aed72bf772a0da30199b925acb866acd3d9e`; base `0x91d91c92e4d4ac9bfd65441eb16eee907f068786`; base `0x9452ca03474c6b704b4e102339b451d640f57f07`; base `0x960bdd1dfd20d7c98fa482d793c3dedd73a113a3`; base `0x962c0df8ca7f7c682b3872cca31ea9c8999ab23c`; base `0x99daf760d2cfb770cc17e883df45454fe421616b`; base `0x9fb8b5a4b3fe655564f0c76616ae79de90cc7382`; base `0xaae87e6f4d87e82fbd64ac6d66796bc5f8d0cbdf`; base `0xb12638f607521dc967d26ed20d3af645502b458f`; base `0xb366e8efb9661323ff477cedf70f55f897d6cfea`; base `0xbc7c5023ee571e4d9c4890c90a16be05c1eef410`; base `0xbd867487712adec5a59b9ae475ee942f652b4c91`; base `0xc15d9944daefe2db03e53bef8dda25a56832c5fe`; base `0xc4300b7cf0646f0fe4c5b2acfccc4dca1346f5d8`; base `0xd7221b10fbbc1e1ba95fd0b4d031c15f7f365296`; base `0xd89c7ffb39c44b17eaecd8717a75a36c19c07582`; base `0xdae398520e2b67cd3f27aef9cf14d93d927f8250`; base `0xded37fc1400b8022968441356f771639ad1b23aa`; base `0xe62bce5d7cb9d16ab8b4d622538bc0a50a5799c2`; base `0xe70f2d34fd04046aaec26a198a35dd8f2df5cd92`; base `0xe96eb1eda83d18cbac224233319fa5071464e1b9`; base `0xfaf372cabc765b63f6fabd436c845d965eda1ca5`; base `0xfc1415403ebb0c693f9a7844b92ad2ff24775c65` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | project_anchor | own_supporting | 0 | base | unit-379244 | `0xe25969e2fa633a0c027fab8f30fc9c6a90d60b48` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-379250 | `0x20b15ee712b3c368af48ea5a59430be93a71eb3b` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | manta-pacific | unit-379221 | `0x13649b6c7e177ffa373eeeeef485952843147210` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | manta-pacific | unit-379222 | `0x18b7d4d572ffbf644cfc2659ed5d2a420e2ad582` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | base | unit-379240 | `0x18b7d4d572ffbf644cfc2659ed5d2a420e2ad582` | ⚠️ Unaudited |
| LockedUSDzMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x3d36ff21e0417d4656296a6ffd20e243d516a6fa`; base `0xe5bbf41759bab9168ba2e04aa76ac168d1404441` | ⚠️ Unaudited |
| LockingToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1f48178de8824cc98c911ff1b36a16dd8e20e59d`; base `0xbe123709012270431393a12216d4070eaab94064` | ⚠️ Unaudited |
| MainnetUSDzMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81784bd147b141c85ab3a36a38c5d4ff56d36266` | ⚠️ Unaudited |
| MerkleRewardDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0xcd04c35177b059360ba7219ebaab5c5e94321dfb`; base `0xe1068bc0a5197540108eade33ed4cc394510ca21`; base `0xea4b3e06915805bd4841fda925b0be943668573c` | ⚠️ Unaudited |
| PCTPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe16f2ec94e8a0819eb93022c45e05d582f4e5c15` | ⚠️ Unaudited |
| PointsVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x60ed4bfb90bcbf8b6c16e986f1001215336a4651`; base `0xc8f188b3579ae595d96781d94c2de53553a18487` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e48675034056769831e46ce30776289d48c32bb` | ⚠️ Unaudited |
| RedemptionQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbfff4b12e69d1d058bf215b1b1c734089f4f558` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x663de54432a1d74912c99e7929d2d58a75452170` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 0 | blast | unit-379234 | `0x08fccc6213cb3843f8d270c4eefc7a09eb32b354` | ⚠️ Unaudited |
| StakePoolDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x532dbb9ecfea8d80ce1d78bd484266245d7bdebc`; base `0x9ce59db556295713c444e318a5c9e94a7e4d4075` | ⚠️ Unaudited |
| sUSDzOFTAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379213 | `0x0c0dfff29e449b0a84f78cc7cdbbe0e31fdaf1b7` | ⚠️ Unaudited |
| sUSDzUSDzExchangeRateChainlinkAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379216 | `0x8047f61e4d8bd15f3a8ad0bf30b7882219c31869` | ⚠️ Unaudited |
| TokenManager | governance | project_anchor | own_supporting | 1 | ethereum | unit-379248 | `0xf6f0a051e4de63d9118a6bc948463a9d08e40a5c` | ⚠️ Unaudited |
| TokenManager | governance | project_anchor | own_supporting | 1 | base | unit-379254 | `0xf6f0a051e4de63d9118a6bc948463a9d08e40a5c` | ⚠️ Unaudited |
| USDz | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379217 | `0xa469b7ee9ee773642b3e93e842e5d9b5baa10067` | ⚠️ Unaudited |
| UsdzMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x8e788484cab6359e65fece14a4d6e510e2efeea5`; base `0xa452af9c1bfb119eafafe105df01e30cc86a4efb` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | manta-pacific | unit-379224 | `0x5a1b8c0e9fe27b9db4913df6b361dea5e96ea129` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | base | unit-379242 | `0xd4cd16f8470ad3d72d06e344f2997d9e59cbbaac` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x69213c52d7d195bcac57b05e2c634faa98024ddc` | ⚠️ Unaudited |
| VaultV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379230 | `0x73d23f3778a90be8846e172354a115543df2a7e4` | ⚠️ Unaudited |
| VaultV2 | unknown | project_anchor | own_supporting | 0 | blast | unit-379238 | `0xf3588ea537b66ea59e9a0b0337abbd39d00cfe09` | ⚠️ Unaudited |
| VeDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xd2a47ab0bc31facc02e8d999184ae60f546c6921`; base `0xe4064bcdc2635213dd69c1ff558f6ff67e0164e7` | ⚠️ Unaudited |
| VotingEscrowAnzenMainchain | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa90ed3ec34e78fd26d59f43ed67a7cbff4d11ba2` | ⚠️ Unaudited |
| VotingResultBroadcaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa0e160cacde318b059aa8cb69995803e1955206f` | ⚠️ Unaudited |
| wPCT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414ac1853329b3704df0caf7749cd296c7f3b750` | ⚠️ Unaudited |
| wPCTCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| TokenManager | governance | project_anchor | own_supporting | 1 | blast | unit-379252 | `0xf6f0a051e4de63d9118a6bc948463a9d08e40a5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dee5d5cf51c92523e8e820a9da99d639c439551` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x900fff3bbf47ded50fd4940d055e1324f38b0d4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd9d5d27ea03e7fd5d897f267518a8c396c7b483` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x52056ed29fe015f4ba2e3b079d10c0b87f46e8c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5a1b8c0e9fe27b9db4913df6b361dea5e96ea129` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x73d23f3778a90be8846e172354a115543df2a7e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca5468757a2791b21663245e44cefaffc98315b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf30a29f1c540724fd8c5c4be1af604a6c6800d29` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Anzen - Halborn Audit Report.pdf](https://github.com/Anzen-Finance/audits/blob/master/Anzen%20-%20Halborn%20Audit%20Report.pdf) | Halborn | Audit | 2024-05 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 15 | high |
| [Anzen - PeckShield Audit Report.pdf](https://github.com/Anzen-Finance/audits/blob/master/Anzen%20-%20PeckShield%20Audit%20Report.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 1 | high |
| [Anzen - Zellic Audit Report.pdf](https://github.com/Anzen-Finance/audits/blob/master/Anzen%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-05 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 6 | high |
| [Anzen and protocol-v2 - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Anzen%20and%20protocol-v2%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-12 | aging | Direct | n/a | matched | 1 | 1 | 0 | 21 | n/a |
| [drive.google.com/drive/folders/1xjQkrQJJeMZQldfdnCGaaj5FiGHaGRmm](https://drive.google.com/drive/folders/1xjQkrQJJeMZQldfdnCGaaj5FiGHaGRmm?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Anzen - Halborn Audit Report.pdf](https://496476276-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F8h7qQqQqo2Jc9kccJQTQ%2Fuploads%2FNcAASiVYTOLTj4qZjNKO%2FAnzen%20-%20Halborn%20Audit%20Report.pdf) | Halborn | Audit | 2024-05 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 15 | high |
| [Anzen - Zellic Audit Report.pdf](https://496476276-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F8h7qQqQqo2Jc9kccJQTQ%2Fuploads%2FgekUuU3OoggR8PP1p0A5%2FAnzen%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-05 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 6 | high |
| [Anzen - PeckShield Audit Report.pdf](https://496476276-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F8h7qQqQqo2Jc9kccJQTQ%2Fuploads%2FkzYadNTHkZGdzuF8PTzj%2FAnzen%20-%20PeckShield%20Audit%20Report.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2161] Anzen - Halborn Audit Report.pdf — matched: Scope section explicitly lists all files in scope. Audit date is the end date of the engagement (05/07/2024).
- [2162] Anzen - PeckShield Audit Report.pdf — matched: Contracts extracted from findings targets and protocol description. No explicit scope table, but findings clearly indicate audited contracts.
- [2163] Anzen - Zellic Audit Report.pdf — matched: Extracted 9 contract names from the scope section (page 9) and threat model modules. Audit date from cover page: May 21, 2024.
- [2164] Anzen and protocol-v2 - Zellic Audit Report.pdf — matched: No reason recorded
- [2166] drive.google.com/drive/folders/1xjQkrQJJeMZQldfdnCGaaj5FiGHaGRmm — no match: The provided text is a Google Drive page listing brand assets (logos, mascot, brand guide) for 'Anzen'. No smart contract names, audit scope, or audit date are present.
- [26485] Anzen - Halborn Audit Report.pdf — matched: Scope section explicitly lists all files in scope. Audit date is the end date of the engagement (05/07/2024).
- [26486] Anzen - Zellic Audit Report.pdf — matched: Extracted 9 contract names from the scope section (page 9) and threat model modules. Audit date from cover page: May 21, 2024.
- [26487] Anzen - PeckShield Audit Report.pdf — matched: Extracted from audit report cover page and findings targets.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Anzen - Halborn Audit Report.pdf | Canto_childUSDz | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | ISPCTPool | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | IsUSDz | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | ISPCTPriceOracle | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | ITurnstile | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | IUSDz | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | IchildUSDz | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | IUSDzFlat | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | IUSDzPriceOracle | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | sUSDz | own contract | ChildsUSDzV2 (alternative) `0x8f08a3b5bceadef10c0b26c8bb720ebb8fa91758` — deployed 2024-07-11 22:20:49+03 — liveness: live (current_address_book_code)<br>ChildsUSDzV2 (alternative) `0xe31ee12bdfdd0573d634124611e85338e2cbf0cf` — deployed 2024-06-29 01:10:31+03 — liveness: live (code_present_context)<br>ChildsUSDzV2 (alternative) `0x1b2c29e3897b8f9170c98440a483e90e715c879d` — deployed 2024-08-09 13:06:17+03 — liveness: live (current_address_book_code)<br>SUSDz (selected) `0x547213367cfb08ab418e7b54d7883b2c2aa27fd7` — deployed 2024-05-16 12:20:11+03 — liveness: live (current_address_book_code)<br>ChildsUSDzV2 (alternative) `0x73d23f3778a90be8846e172354a115543df2a7e4` — deployed 2024-06-29 01:10:39+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-05-16 was 9d from audit; next candidate 53d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - Halborn Audit Report.pdf | USDz | ambiguous — not counted | ChildUSDzV2 (alternative) `0x73d23f3778a90be8846e172354a115543df2a7e4` — deployed 2024-07-11 00:13:59+03 — liveness: live (code_present_context)<br>ChildUSDz (alternative) `0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938` — deployed 2024-05-16 12:41:37+03 — liveness: live (code_present_context)<br>USDz (alternative) `0xa469b7ee9ee773642b3e93e842e5d9b5baa10067` — deployed 2024-05-16 12:19:59+03 — liveness: live (current_address_book_code)<br>ChildUSDzV2 (alternative) `0x5018609ab477cc502e170a5accf5312b86a4b94f` — deployed 2024-08-19 15:11:27+03 — liveness: live (code_present_context)<br>ChildUSDzV2 (alternative) `0x52056ed29fe015f4ba2e3b079d10c0b87f46e8c6` — deployed 2024-07-01 10:34:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Anzen - Halborn Audit Report.pdf | USDzFlat | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | SPCTPriceOracle | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | vault | ambiguous — not counted | Vault (alternative) `0x5a1b8c0e9fe27b9db4913df6b361dea5e96ea129` — deployed 2024-07-30 04:52:09+03 — liveness: live (current_address_book_code)<br>VaultV2 (alternative) `0xf3588ea537b66ea59e9a0b0337abbd39d00cfe09` — deployed 2024-07-31 11:10:21+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0xd4cd16f8470ad3d72d06e344f2997d9e59cbbaac` — deployed 2024-05-16 12:41:37+03 — liveness: live (current_address_book_code)<br>VaultV2 (alternative) `0x73d23f3778a90be8846e172354a115543df2a7e4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Anzen - Halborn Audit Report.pdf | SafeMath | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | childUSDz | own contract | ChildUSDz (selected) `0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938` — deployed 2024-05-16 12:41:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - Halborn Audit Report.pdf | USDzPriceOracle | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | SPCTPool | own contract | SPCTPool (selected) `0xf30a29f1c540724fd8c5c4be1af604a6c6800d29` — deployed 2024-05-16 12:19:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - PeckShield Audit Report.pdf | USDz | ambiguous — not counted | ChildUSDzV2 (alternative) `0x73d23f3778a90be8846e172354a115543df2a7e4` — deployed 2024-07-11 00:13:59+03 — liveness: live (code_present_context)<br>ChildUSDz (alternative) `0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938` — deployed 2024-05-16 12:41:37+03 — liveness: live (code_present_context)<br>USDz (alternative) `0xa469b7ee9ee773642b3e93e842e5d9b5baa10067` — deployed 2024-05-16 12:19:59+03 — liveness: live (current_address_book_code)<br>ChildUSDzV2 (alternative) `0x5018609ab477cc502e170a5accf5312b86a4b94f` — deployed 2024-08-19 15:11:27+03 — liveness: live (code_present_context)<br>ChildUSDzV2 (alternative) `0x52056ed29fe015f4ba2e3b079d10c0b87f46e8c6` — deployed 2024-07-01 10:34:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Anzen - PeckShield Audit Report.pdf | sUSDz | own contract | ChildsUSDzV2 (alternative) `0x8f08a3b5bceadef10c0b26c8bb720ebb8fa91758` — deployed 2024-07-11 22:20:49+03 — liveness: live (current_address_book_code)<br>ChildsUSDzV2 (alternative) `0xe31ee12bdfdd0573d634124611e85338e2cbf0cf` — deployed 2024-06-29 01:10:31+03 — liveness: live (code_present_context)<br>ChildsUSDzV2 (alternative) `0x1b2c29e3897b8f9170c98440a483e90e715c879d` — deployed 2024-08-09 13:06:17+03 — liveness: live (current_address_book_code)<br>SUSDz (selected) `0x547213367cfb08ab418e7b54d7883b2c2aa27fd7` — deployed 2024-05-16 12:20:11+03 — liveness: live (current_address_book_code)<br>ChildsUSDzV2 (alternative) `0x73d23f3778a90be8846e172354a115543df2a7e4` — deployed 2024-06-29 01:10:39+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-05-16 was 18d from audit; next candidate 62d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - PeckShield Audit Report.pdf | SPCTPool | own contract | SPCTPool (selected) `0xf30a29f1c540724fd8c5c4be1af604a6c6800d29` — deployed 2024-05-16 12:19:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - PeckShield Audit Report.pdf | SPCT | own contract | SPCTPool (selected) `0xf30a29f1c540724fd8c5c4be1af604a6c6800d29` — deployed 2024-05-16 12:19:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - Zellic Audit Report.pdf | Canto_childUSDz | unmatched — not counted | — | listed in scope as program 'Canto_childUSDz' | no |
| Anzen - Zellic Audit Report.pdf | childUSDz | own contract | ChildUSDz (selected) `0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938` — deployed 2024-05-16 12:41:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - Zellic Audit Report.pdf | SPCTPool | own contract | SPCTPool (selected) `0xf30a29f1c540724fd8c5c4be1af604a6c6800d29` — deployed 2024-05-16 12:19:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - Zellic Audit Report.pdf | SPCTPriceOracle | unmatched — not counted | — | listed in scope as program 'SPCTPriceOracle' | no |
| Anzen - Zellic Audit Report.pdf | sUSDz | own contract | ChildsUSDzV2 (alternative) `0x8f08a3b5bceadef10c0b26c8bb720ebb8fa91758` — deployed 2024-07-11 22:20:49+03 — liveness: live (current_address_book_code)<br>ChildsUSDzV2 (alternative) `0xe31ee12bdfdd0573d634124611e85338e2cbf0cf` — deployed 2024-06-29 01:10:31+03 — liveness: live (code_present_context)<br>ChildsUSDzV2 (alternative) `0x1b2c29e3897b8f9170c98440a483e90e715c879d` — deployed 2024-08-09 13:06:17+03 — liveness: live (current_address_book_code)<br>SUSDz (selected) `0x547213367cfb08ab418e7b54d7883b2c2aa27fd7` — deployed 2024-05-16 12:20:11+03 — liveness: live (current_address_book_code)<br>ChildsUSDzV2 (alternative) `0x73d23f3778a90be8846e172354a115543df2a7e4` — deployed 2024-06-29 01:10:39+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-05-16 was 5d from audit; next candidate 39d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - Zellic Audit Report.pdf | USDz | ambiguous — not counted | ChildUSDzV2 (alternative) `0x73d23f3778a90be8846e172354a115543df2a7e4` — deployed 2024-07-11 00:13:59+03 — liveness: live (code_present_context)<br>ChildUSDz (alternative) `0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938` — deployed 2024-05-16 12:41:37+03 — liveness: live (code_present_context)<br>USDz (alternative) `0xa469b7ee9ee773642b3e93e842e5d9b5baa10067` — deployed 2024-05-16 12:19:59+03 — liveness: live (current_address_book_code)<br>ChildUSDzV2 (alternative) `0x5018609ab477cc502e170a5accf5312b86a4b94f` — deployed 2024-08-19 15:11:27+03 — liveness: live (code_present_context)<br>ChildUSDzV2 (alternative) `0x52056ed29fe015f4ba2e3b079d10c0b87f46e8c6` — deployed 2024-07-01 10:34:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Anzen - Zellic Audit Report.pdf | USDzFlat | unmatched — not counted | — | listed in scope as program 'USDzFlat' | no |
| Anzen - Zellic Audit Report.pdf | USDzPriceOracle | unmatched — not counted | — | listed in scope as program 'USDzPriceOracle' | no |
| Anzen - Zellic Audit Report.pdf | vault | ambiguous — not counted | Vault (alternative) `0x5a1b8c0e9fe27b9db4913df6b361dea5e96ea129` — deployed 2024-07-30 04:52:09+03 — liveness: live (current_address_book_code)<br>VaultV2 (alternative) `0xf3588ea537b66ea59e9a0b0337abbd39d00cfe09` — deployed 2024-07-31 11:10:21+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0xd4cd16f8470ad3d72d06e344f2997d9e59cbbaac` — deployed 2024-05-16 12:41:37+03 — liveness: live (current_address_book_code)<br>VaultV2 (alternative) `0x73d23f3778a90be8846e172354a115543df2a7e4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | AeroStrategy | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | AnzenGaugeControllerBaseUpg | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | AnzenGaugeControllerMainchainUpg | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | AnzenGaugeControllerSidechainUpg | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | AnzenToken | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xeec468333ccc16d4bf1cef497a56cf8c0aae4ca3` — deployed 2024-11-28 13:46:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | AnzenVotingControllerUpg | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | BoringOwnableUpgradeable | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | LockedUsdzMarket | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | LockingToken | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | MainnetUSDzMarket | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | MiniHelpers | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | PMath | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | StakePool | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | TokenHelper | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | VeBalanceLib | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | VeHistoryLib | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | VotingControllerStorageUpg | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | VotingEscrowAnzenMainchain | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | VotingEscrowAnzenSidechain | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | VotingEscrowTokenBase | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | VotingResultBroadcaster | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | WeekMath | unmatched — not counted | — | — | no |
| Anzen - Halborn Audit Report.pdf | Canto_childUSDz | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | ISPCTPool | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | IsUSDz | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | ISPCTPriceOracle | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | ITurnstile | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | IUSDz | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | IchildUSDz | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | IUSDzFlat | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | IUSDzPriceOracle | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | sUSDz | own contract | ChildsUSDzV2 (alternative) `0x8f08a3b5bceadef10c0b26c8bb720ebb8fa91758` — deployed 2024-07-11 22:20:49+03 — liveness: live (current_address_book_code)<br>ChildsUSDzV2 (alternative) `0xe31ee12bdfdd0573d634124611e85338e2cbf0cf` — deployed 2024-06-29 01:10:31+03 — liveness: live (code_present_context)<br>ChildsUSDzV2 (alternative) `0x1b2c29e3897b8f9170c98440a483e90e715c879d` — deployed 2024-08-09 13:06:17+03 — liveness: live (current_address_book_code)<br>SUSDz (selected) `0x547213367cfb08ab418e7b54d7883b2c2aa27fd7` — deployed 2024-05-16 12:20:11+03 — liveness: live (current_address_book_code)<br>ChildsUSDzV2 (alternative) `0x73d23f3778a90be8846e172354a115543df2a7e4` — deployed 2024-06-29 01:10:39+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-05-16 was 9d from audit; next candidate 53d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - Halborn Audit Report.pdf | USDz | ambiguous — not counted | ChildUSDzV2 (alternative) `0x73d23f3778a90be8846e172354a115543df2a7e4` — deployed 2024-07-11 00:13:59+03 — liveness: live (code_present_context)<br>ChildUSDz (alternative) `0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938` — deployed 2024-05-16 12:41:37+03 — liveness: live (code_present_context)<br>USDz (alternative) `0xa469b7ee9ee773642b3e93e842e5d9b5baa10067` — deployed 2024-05-16 12:19:59+03 — liveness: live (current_address_book_code)<br>ChildUSDzV2 (alternative) `0x5018609ab477cc502e170a5accf5312b86a4b94f` — deployed 2024-08-19 15:11:27+03 — liveness: live (code_present_context)<br>ChildUSDzV2 (alternative) `0x52056ed29fe015f4ba2e3b079d10c0b87f46e8c6` — deployed 2024-07-01 10:34:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Anzen - Halborn Audit Report.pdf | USDzFlat | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | SPCTPriceOracle | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | vault | ambiguous — not counted | Vault (alternative) `0x5a1b8c0e9fe27b9db4913df6b361dea5e96ea129` — deployed 2024-07-30 04:52:09+03 — liveness: live (current_address_book_code)<br>VaultV2 (alternative) `0xf3588ea537b66ea59e9a0b0337abbd39d00cfe09` — deployed 2024-07-31 11:10:21+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0xd4cd16f8470ad3d72d06e344f2997d9e59cbbaac` — deployed 2024-05-16 12:41:37+03 — liveness: live (current_address_book_code)<br>VaultV2 (alternative) `0x73d23f3778a90be8846e172354a115543df2a7e4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Anzen - Halborn Audit Report.pdf | SafeMath | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | childUSDz | own contract | ChildUSDz (selected) `0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938` — deployed 2024-05-16 12:41:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - Halborn Audit Report.pdf | USDzPriceOracle | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | SPCTPool | own contract | SPCTPool (selected) `0xf30a29f1c540724fd8c5c4be1af604a6c6800d29` — deployed 2024-05-16 12:19:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - Zellic Audit Report.pdf | Canto_childUSDz | unmatched — not counted | — | listed in scope as program 'Canto_childUSDz' | no |
| Anzen - Zellic Audit Report.pdf | childUSDz | own contract | ChildUSDz (selected) `0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938` — deployed 2024-05-16 12:41:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - Zellic Audit Report.pdf | SPCTPool | own contract | SPCTPool (selected) `0xf30a29f1c540724fd8c5c4be1af604a6c6800d29` — deployed 2024-05-16 12:19:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - Zellic Audit Report.pdf | SPCTPriceOracle | unmatched — not counted | — | listed in scope as program 'SPCTPriceOracle' | no |
| Anzen - Zellic Audit Report.pdf | sUSDz | own contract | ChildsUSDzV2 (alternative) `0x8f08a3b5bceadef10c0b26c8bb720ebb8fa91758` — deployed 2024-07-11 22:20:49+03 — liveness: live (current_address_book_code)<br>ChildsUSDzV2 (alternative) `0xe31ee12bdfdd0573d634124611e85338e2cbf0cf` — deployed 2024-06-29 01:10:31+03 — liveness: live (code_present_context)<br>ChildsUSDzV2 (alternative) `0x1b2c29e3897b8f9170c98440a483e90e715c879d` — deployed 2024-08-09 13:06:17+03 — liveness: live (current_address_book_code)<br>SUSDz (selected) `0x547213367cfb08ab418e7b54d7883b2c2aa27fd7` — deployed 2024-05-16 12:20:11+03 — liveness: live (current_address_book_code)<br>ChildsUSDzV2 (alternative) `0x73d23f3778a90be8846e172354a115543df2a7e4` — deployed 2024-06-29 01:10:39+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-05-16 was 5d from audit; next candidate 39d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - Zellic Audit Report.pdf | USDz | ambiguous — not counted | ChildUSDzV2 (alternative) `0x73d23f3778a90be8846e172354a115543df2a7e4` — deployed 2024-07-11 00:13:59+03 — liveness: live (code_present_context)<br>ChildUSDz (alternative) `0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938` — deployed 2024-05-16 12:41:37+03 — liveness: live (code_present_context)<br>USDz (alternative) `0xa469b7ee9ee773642b3e93e842e5d9b5baa10067` — deployed 2024-05-16 12:19:59+03 — liveness: live (current_address_book_code)<br>ChildUSDzV2 (alternative) `0x5018609ab477cc502e170a5accf5312b86a4b94f` — deployed 2024-08-19 15:11:27+03 — liveness: live (code_present_context)<br>ChildUSDzV2 (alternative) `0x52056ed29fe015f4ba2e3b079d10c0b87f46e8c6` — deployed 2024-07-01 10:34:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Anzen - Zellic Audit Report.pdf | USDzFlat | unmatched — not counted | — | listed in scope as program 'USDzFlat' | no |
| Anzen - Zellic Audit Report.pdf | USDzPriceOracle | unmatched — not counted | — | listed in scope as program 'USDzPriceOracle' | no |
| Anzen - Zellic Audit Report.pdf | vault | ambiguous — not counted | Vault (alternative) `0x5a1b8c0e9fe27b9db4913df6b361dea5e96ea129` — deployed 2024-07-30 04:52:09+03 — liveness: live (current_address_book_code)<br>VaultV2 (alternative) `0xf3588ea537b66ea59e9a0b0337abbd39d00cfe09` — deployed 2024-07-31 11:10:21+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0xd4cd16f8470ad3d72d06e344f2997d9e59cbbaac` — deployed 2024-05-16 12:41:37+03 — liveness: live (current_address_book_code)<br>VaultV2 (alternative) `0x73d23f3778a90be8846e172354a115543df2a7e4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Anzen - PeckShield Audit Report.pdf | USDz | ambiguous — not counted | ChildUSDzV2 (alternative) `0x73d23f3778a90be8846e172354a115543df2a7e4` — deployed 2024-07-11 00:13:59+03 — liveness: live (code_present_context)<br>ChildUSDz (alternative) `0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938` — deployed 2024-05-16 12:41:37+03 — liveness: live (code_present_context)<br>USDz (alternative) `0xa469b7ee9ee773642b3e93e842e5d9b5baa10067` — deployed 2024-05-16 12:19:59+03 — liveness: live (current_address_book_code)<br>ChildUSDzV2 (alternative) `0x5018609ab477cc502e170a5accf5312b86a4b94f` — deployed 2024-08-19 15:11:27+03 — liveness: live (code_present_context)<br>ChildUSDzV2 (alternative) `0x52056ed29fe015f4ba2e3b079d10c0b87f46e8c6` — deployed 2024-07-01 10:34:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Anzen - PeckShield Audit Report.pdf | sUSDz | own contract | ChildsUSDzV2 (alternative) `0x8f08a3b5bceadef10c0b26c8bb720ebb8fa91758` — deployed 2024-07-11 22:20:49+03 — liveness: live (current_address_book_code)<br>ChildsUSDzV2 (alternative) `0xe31ee12bdfdd0573d634124611e85338e2cbf0cf` — deployed 2024-06-29 01:10:31+03 — liveness: live (code_present_context)<br>ChildsUSDzV2 (alternative) `0x1b2c29e3897b8f9170c98440a483e90e715c879d` — deployed 2024-08-09 13:06:17+03 — liveness: live (current_address_book_code)<br>SUSDz (selected) `0x547213367cfb08ab418e7b54d7883b2c2aa27fd7` — deployed 2024-05-16 12:20:11+03 — liveness: live (current_address_book_code)<br>ChildsUSDzV2 (alternative) `0x73d23f3778a90be8846e172354a115543df2a7e4` — deployed 2024-06-29 01:10:39+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-05-16 was 18d from audit; next candidate 62d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - PeckShield Audit Report.pdf | SPCTPool | own contract | SPCTPool (selected) `0xf30a29f1c540724fd8c5c4be1af604a6c6800d29` — deployed 2024-05-16 12:19:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - PeckShield Audit Report.pdf | SPCT | own contract | SPCTPool (selected) `0xf30a29f1c540724fd8c5c4be1af604a6c6800d29` — deployed 2024-05-16 12:19:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| manta-pacific | `0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938` | AnzenLayerZeroAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0xe31ee12bdfdd0573d634124611e85338e2cbf0cf` | AnzenLayerZeroAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xdd216101d84d513a12cb7bfb109f7abcf330d58e` | AnzenLayerZeroAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938` | AnzenLayerZeroAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x8f08a3b5bceadef10c0b26c8bb720ebb8fa91758` | ChildsUSDzV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1b2c29e3897b8f9170c98440a483e90e715c879d` | ChildsUSDzV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x73d23f3778a90be8846e172354a115543df2a7e4` | ChildsUSDzV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x73d23f3778a90be8846e172354a115543df2a7e4` | ChildUSDzV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5018609ab477cc502e170a5accf5312b86a4b94f` | ChildUSDzV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x52056ed29fe015f4ba2e3b079d10c0b87f46e8c6` | ChildUSDzV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe25969e2fa633a0c027fab8f30fc9c6a90d60b48` | EACAggregatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0c0dfff29e449b0a84f78cc7cdbbe0e31fdaf1b7` | sUSDzOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf6f0a051e4de63d9118a6bc948463a9d08e40a5c` | TokenManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa469b7ee9ee773642b3e93e842e5d9b5baa10067` | USDz | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x5a1b8c0e9fe27b9db4913df6b361dea5e96ea129` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd4cd16f8470ad3d72d06e344f2997d9e59cbbaac` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0xf3588ea537b66ea59e9a0b0337abbd39d00cfe09` | VaultV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 43 |
| upstream | 2 |
| standard_library | 9 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 19 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 10 ambiguous, 55 unmatched
- Matched-own operational status: 19 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=1
- Match method counts: temporal_name=6, unique_name=11

Zero-match audit list:

- [2166] drive.google.com/drive/folders/1xjQkrQJJeMZQldfdnCGaaj5FiGHaGRmm

Fork inheritance lineage and inherited audits are included when available.
