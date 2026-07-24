# Agentic Audit Brief: Saturn

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 4 audit(s)
- Eligible audit results: 4 (4 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Saturn (`saturn`)
- Website: [https://app.saturn.credit/](https://app.saturn.credit/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum
- Contract surface: 125 unique implementations (125 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $187,106,216.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Saturn. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across bsc, ethereum. Structural roles: 2 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: supporting (2)
- Contract kinds: abstract (1), contract (1)
- Detected standards: erc1967proxy (2)
- Frameworks: openzeppelin-upgradeable (2), openzeppelin (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 10 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x4bc9fec04f0f95e9b42a3ef18f3c96fb57923d2e`, chain 1)
- UnnamedContract (`0x5f7ecd0d045c393da6cb6c933c671ac305a871bf`, chain 1)
- UnnamedContract (`0x6206ca315c2fcdd2a857b47efb285aa12c529a7a`, chain 1)
- UnnamedContract (`0xb6807116b3b1b321a390594e31ecd6e0076f6278`, chain 1)
- UnnamedContract (`0xf4d0cf32908b2c7f1021339c43df0f77f06896d7`, chain 1)
- UnnamedContract (`0xf4d2076277fff631efc4385ab36b1f7734218d23`, chain 1)
- UnnamedContract (`0xf3396a9a79257d89f98143d8ab73da1dff4e0e81`, chain 56)
- UnnamedContract (`0xf80ab3cc041d8ccc1c51acc295afdba26ad70aa9`, chain 56)
- ERC1967Proxy (`0xd166337499e176bbc38a1fbd113ab144e5bd2df7`, chain 1)
- USDat (`0x23238f20b894f29041f48d88ee91131c395aaa71`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 10 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 115 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 10 of 125 unique; 115 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/3
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 122
- Unique implementations: 125
- Raw deployments: 125
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 4 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 50.0% (Certora)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Certora | Tier 1 | 1 | 33.3% | 2026-04 |
| Three Sigma | Tier 2 | 1 | 33.3% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| USDat | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392049 | `0x23238f20b894f29041f48d88ee91131c395aaa71` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392050 | `0xd166337499e176bbc38a1fbd113ab144e5bd2df7` | ⚠️ Unaudited |
| MToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (122)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00e501f833fec52b88143471e411c93a8fc7b574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x016e9b9fef398da65ef33346cd2e3d717185a8b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02ae69c812dd749c32afb4f1723f6833eef3d7a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0502b9641fab2310a0a4927c79e918812c5b52a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05a75d586b0b06e3843517dbf470270cd92c27a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x094ff63c57e6c37a2f8b419ac2a396a76058b433` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0955f0d3b7ef20f305bc5896878770cc98bdf99f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a585b784513ab053563dee3cf830c633e4ff6c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b9bd3eaac381a1a6731ff6598a50638e5cffd25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e078dc7fcd6f8faa6787e0cf783b8208c1db0f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fbe44b96320ebd455ff9cce0781fa9a83ddee7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x135cc2dd9a29377ac0a845b4ee3d193632aca3ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1714e782eb2e646a484f3d2bf7ab400c7d0a0166` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b5dec296bee063230b7e477d5fe5ada326cb08e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d37422e15ee379549b0b8e2a47523d3ef5071a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1eb65da53150b09732fa64192c4a93af489489c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f09475fe4d212fc24611bae180201869956c238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f82248ab79b2d699fc447f6b357cd15d529cbe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ffa02811441f084b83cf6dba42fc2438865990d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x224ac1d400be6b1f50b040c3ff8c2a19300384f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2279f23ea48be063b47ed9d53c064f4399a09e06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23b5cc113290b4159fc8aff0790180e5c80087c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2717d691013506ef7ca49b35f054b2662d081c5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ae85cf50cc5398e0236fa9a70e194324dc6a45d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c98697179da263dde3438d32c289e8cc082eee8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d5ee9a108f8ffa8a69539924092b6fb0982153e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e4409c6835f302fbbd6238fe512e8104415584b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x305f1d140768df6d5e3cf7c696c384fd839a2ef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3126e7f38d5f60f4e2b6ec3511c7bdbd79317df1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x369c67e8b026cc4ef98350f332d7dd52b85b7674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36a670000efadb674c9766af054ca074a6116e12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a9763662bfca861340d1d40ba5e5a2a29bc5f3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b4f49f4aa5491b5a60c0724467a67b4910aeaac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f0543aa057bcaea152fe9462cb3ffab305a6f8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f2647a71cc99ff788a87160fefb535f6eb6896f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f929667bdf783b99274f10465a89d6af772736e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42fc9d7c315cf64edc39ec984bf89bc34bbe9fd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44e4d73d8e2d9d3b89d32904b129f5717a2a0a61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45d48aa93275c2274e1006bfdcb6406ef96a509b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48f9a46ba852b5c22d4153d0534397b59abfdef5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392039 | `0x4bc9fec04f0f95e9b42a3ef18f3c96fb57923d2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d4754727211b1cef6f5286050af6989df1ee078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e03320ef44b5112c02010121ae82c1dc951943d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50c1008722ffa2d3170f3ba5cb9e7c0238bfa2a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56315f0a01039a2023ac6a38ae1cfb2cbda175c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a33e6cb085e2ddd0df558c0d7d71a27be6b9131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a489eacad4bec30b5bc3bce8a0b9301ccdc0f60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392040 | `0x5f7ecd0d045c393da6cb6c933c671ac305a871bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61b35e8fd649992e184fc3e619e6899c0e851460` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392042 | `0x6206ca315c2fcdd2a857b47efb285aa12c529a7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x651b101f72f82630cf59c68e6ee4305afbd3b1f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67d4ae9f265270ae123c08d2657536771d19cd91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c659766386874a46dacd7a9aef04818fd3b13f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x718681ac045c42f1839f914b7afe9cac93f50de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71b0305aca6a29d6485f9e4ac5a333af5df2b62c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x725609ae7d540a7985d7fd189e155db9d72c1d44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73b8e902638a21b4d0319cf99fa333b2727ad318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x788d4dc49c99d67b092e0c4abfddc33c3d8e20c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7922912ab91eb6a4b0350b01dd066994ba64f882` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x799fdc55150583b5baa0b47065e1c901862c95d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79f7adfd5c3e736c6737b3936af13b5f05f067fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7df19ff8af15e553e5ac9da447d7ff323586c227` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ff41654d1551f01e622e2b1050ea027a3a6c9dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8368e824fd9755d53d5ec943c8284959ec7ed8aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88a86bbe9d494dcc80ba542d0289f3efc8a66808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89fb24e1c41c74c712500b86399751b1da463697` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b3b1f59d7a813d512c1144ac45e58e6e5224160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x917da15ad7c4801eb63540d1db34a4174931e132` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x922aea120769f6964793cc87dd3f7cf68635aecd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9404dc13440f6bac4323691b3d36a2a4af1a0e29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9468d96d95936fd0cd4b0591b626bb95bf6c2ed1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95873a9ac303ed7a82f3150a6976d1eeeb29fb44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95dc7c293ad1706c80bcde068b609ca61b3ff78c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x965750914f5bb1c9da8dbf5587970fedac1534c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b3a984d1abbe03845cba7a895f1ff7f4209d59c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d7fe32813b1b8fd927bb515ac5380b9256e129c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ddb5fba9a737860c7cced0d9177af56ab16c183` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f4729fe74bae0e7a5880ac89bfaf2e1b1a58dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2c83fe226e752a86d72a3daac0662988ffbfc49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4f8f863a192fb028c81e242740a48fff89883aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa63e129ebbe3f8faafc6c8f9600806dfe749fe77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa7f4b5dc26a5c5b8a36f3f4a2862a2e1fbfd71d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab5dd7dd7669072a1ef27c0ba241120a27a1aec3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae11a5c9b30659501edf487e300fc026ceb23fd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf452c2ea72b6e08ab64a67133a13c4ed35343eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafa801e508613be7ca88d2d0fdb3f84f4c1b0384` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb00341502dfea6ced8a5786b4059d29da5e4d1fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb34864138863ed5fb6fc8324e92d10fda58b9902` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb47777d7082d68367aa5f47653def255b37baa61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392044 | `0xb6807116b3b1b321a390594e31ecd6e0076f6278` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8939440623a2d31d3d2f73bc7e670f52c17621a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb92a68763b2f83e094595c7b41a7fb9d0f8da193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaebe41c1ca0c3f7f076dcf50b24e24d45cfc246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb65fa58bdb7d33e4a3d1a40a7a9bd99e746367b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1e5fa6d48ba11ca163b03f2abf843471eb7b2fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1e84f39413eb3641a208dcf784ab477a6e1336f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc30fb86c2559e4b757c037976e3244901c10faf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc353ac4b425f818ad87e228bf816e15c2173ac07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc40526086db1b5983fad6f0e59567113b7b5e31f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb3cdc3759230d106bbfd6e6b4a08a1e7b7c97d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb44fa91012781ff12d4c258508b470b97f82d41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0586a927e9b6af51b5b83e58453c811fa5c243e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd13cb763c43b5c058e7ec40176962c5030f4eb49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb4881ab0ad6b8423f76dd8c9d65542749a1db77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe034de753a3d855b6dad1a4984de75a5c443e939` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2c4e28d938aa42a5c5edd5193f7bd2a972bf7bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2c7f1bb9acb754210246afe2f33019926865ca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe35ccf1be62bc13f2f259ace624db10c3d527135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe41cd2dcc63eb63a9d9e62f2a3d9b49e6d0c0a1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe660b4dc23430bdf2ec30b961fcaf6ccac8276a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe69544ff3e19179969222e7192173a1b9273fd90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe774bc668d300e3ac157e405149aaff89eed1df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe902cd939a0605001257a5719b4d6d5478b490b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb52759b7e94d0c4aeeda2e21475e6bc3aabf43b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebc15d318379d46542459b0dd922afe30db2292b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeca1d16a120fc96fe33cfeb64adca70b678dfb8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf17c0edcaa28371e9c8012d7699bf40ecf0f58d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392045 | `0xf4d0cf32908b2c7f1021339c43df0f77f06896d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392046 | `0xf4d2076277fff631efc4385ab36b1f7734218d23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6351b2dcf0110e76c71c1d319af2f410454b6f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392047 | `0xf3396a9a79257d89f98143d8ab73da1dff4e0e81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392048 | `0xf80ab3cc041d8ccc1c51acc295afdba26ad70aa9` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 114
- Live contracts: 0
- Unknown liveness contracts: 114
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=114

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x00e501f833fec52b88143471e411c93a8fc7b574` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x016e9b9fef398da65ef33346cd2e3d717185a8b2` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x02ae69c812dd749c32afb4f1723f6833eef3d7a3` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0502b9641fab2310a0a4927c79e918812c5b52a6` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x05a75d586b0b06e3843517dbf470270cd92c27a9` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x094ff63c57e6c37a2f8b419ac2a396a76058b433` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0955f0d3b7ef20f305bc5896878770cc98bdf99f` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0a585b784513ab053563dee3cf830c633e4ff6c7` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0b9bd3eaac381a1a6731ff6598a50638e5cffd25` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0e078dc7fcd6f8faa6787e0cf783b8208c1db0f6` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0fbe44b96320ebd455ff9cce0781fa9a83ddee7a` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x135cc2dd9a29377ac0a845b4ee3d193632aca3ff` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1714e782eb2e646a484f3d2bf7ab400c7d0a0166` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1b5dec296bee063230b7e477d5fe5ada326cb08e` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1d37422e15ee379549b0b8e2a47523d3ef5071a9` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1eb65da53150b09732fa64192c4a93af489489c1` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1f09475fe4d212fc24611bae180201869956c238` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1f82248ab79b2d699fc447f6b357cd15d529cbe8` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1ffa02811441f084b83cf6dba42fc2438865990d` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x224ac1d400be6b1f50b040c3ff8c2a19300384f7` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2279f23ea48be063b47ed9d53c064f4399a09e06` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x23b5cc113290b4159fc8aff0790180e5c80087c1` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2717d691013506ef7ca49b35f054b2662d081c5d` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ae85cf50cc5398e0236fa9a70e194324dc6a45d` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2c98697179da263dde3438d32c289e8cc082eee8` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2d5ee9a108f8ffa8a69539924092b6fb0982153e` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2e4409c6835f302fbbd6238fe512e8104415584b` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x305f1d140768df6d5e3cf7c696c384fd839a2ef8` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3126e7f38d5f60f4e2b6ec3511c7bdbd79317df1` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x369c67e8b026cc4ef98350f332d7dd52b85b7674` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x36a670000efadb674c9766af054ca074a6116e12` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3a9763662bfca861340d1d40ba5e5a2a29bc5f3e` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b4f49f4aa5491b5a60c0724467a67b4910aeaac` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3f0543aa057bcaea152fe9462cb3ffab305a6f8d` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3f2647a71cc99ff788a87160fefb535f6eb6896f` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3f929667bdf783b99274f10465a89d6af772736e` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x42fc9d7c315cf64edc39ec984bf89bc34bbe9fd5` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x44e4d73d8e2d9d3b89d32904b129f5717a2a0a61` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x45d48aa93275c2274e1006bfdcb6406ef96a509b` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x48f9a46ba852b5c22d4153d0534397b59abfdef5` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4d4754727211b1cef6f5286050af6989df1ee078` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4e03320ef44b5112c02010121ae82c1dc951943d` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50c1008722ffa2d3170f3ba5cb9e7c0238bfa2a9` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x56315f0a01039a2023ac6a38ae1cfb2cbda175c2` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5a33e6cb085e2ddd0df558c0d7d71a27be6b9131` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5a489eacad4bec30b5bc3bce8a0b9301ccdc0f60` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x61b35e8fd649992e184fc3e619e6899c0e851460` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x651b101f72f82630cf59c68e6ee4305afbd3b1f5` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x67d4ae9f265270ae123c08d2657536771d19cd91` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c659766386874a46dacd7a9aef04818fd3b13f0` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x718681ac045c42f1839f914b7afe9cac93f50de0` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x71b0305aca6a29d6485f9e4ac5a333af5df2b62c` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x725609ae7d540a7985d7fd189e155db9d72c1d44` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x73b8e902638a21b4d0319cf99fa333b2727ad318` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x788d4dc49c99d67b092e0c4abfddc33c3d8e20c3` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7922912ab91eb6a4b0350b01dd066994ba64f882` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x799fdc55150583b5baa0b47065e1c901862c95d5` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x79f7adfd5c3e736c6737b3936af13b5f05f067fe` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7df19ff8af15e553e5ac9da447d7ff323586c227` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7ff41654d1551f01e622e2b1050ea027a3a6c9dc` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8368e824fd9755d53d5ec943c8284959ec7ed8aa` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x88a86bbe9d494dcc80ba542d0289f3efc8a66808` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x89fb24e1c41c74c712500b86399751b1da463697` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8b3b1f59d7a813d512c1144ac45e58e6e5224160` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x917da15ad7c4801eb63540d1db34a4174931e132` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x922aea120769f6964793cc87dd3f7cf68635aecd` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9404dc13440f6bac4323691b3d36a2a4af1a0e29` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9468d96d95936fd0cd4b0591b626bb95bf6c2ed1` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x95873a9ac303ed7a82f3150a6976d1eeeb29fb44` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x95dc7c293ad1706c80bcde068b609ca61b3ff78c` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x965750914f5bb1c9da8dbf5587970fedac1534c4` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9b3a984d1abbe03845cba7a895f1ff7f4209d59c` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9d7fe32813b1b8fd927bb515ac5380b9256e129c` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9ddb5fba9a737860c7cced0d9177af56ab16c183` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9f4729fe74bae0e7a5880ac89bfaf2e1b1a58dd5` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa2c83fe226e752a86d72a3daac0662988ffbfc49` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa4f8f863a192fb028c81e242740a48fff89883aa` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa63e129ebbe3f8faafc6c8f9600806dfe749fe77` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaa7f4b5dc26a5c5b8a36f3f4a2862a2e1fbfd71d` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xab5dd7dd7669072a1ef27c0ba241120a27a1aec3` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xae11a5c9b30659501edf487e300fc026ceb23fd2` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaf452c2ea72b6e08ab64a67133a13c4ed35343eb` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xafa801e508613be7ca88d2d0fdb3f84f4c1b0384` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb00341502dfea6ced8a5786b4059d29da5e4d1fd` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb34864138863ed5fb6fc8324e92d10fda58b9902` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb47777d7082d68367aa5f47653def255b37baa61` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb8939440623a2d31d3d2f73bc7e670f52c17621a` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb92a68763b2f83e094595c7b41a7fb9d0f8da193` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbaebe41c1ca0c3f7f076dcf50b24e24d45cfc246` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbb65fa58bdb7d33e4a3d1a40a7a9bd99e746367b` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc1e5fa6d48ba11ca163b03f2abf843471eb7b2fb` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc1e84f39413eb3641a208dcf784ab477a6e1336f` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc30fb86c2559e4b757c037976e3244901c10faf8` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc353ac4b425f818ad87e228bf816e15c2173ac07` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc40526086db1b5983fad6f0e59567113b7b5e31f` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcb3cdc3759230d106bbfd6e6b4a08a1e7b7c97d2` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcb44fa91012781ff12d4c258508b470b97f82d41` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd0586a927e9b6af51b5b83e58453c811fa5c243e` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd13cb763c43b5c058e7ec40176962c5030f4eb49` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdb4881ab0ad6b8423f76dd8c9d65542749a1db77` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe034de753a3d855b6dad1a4984de75a5c443e939` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe2c4e28d938aa42a5c5edd5193f7bd2a972bf7bf` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe2c7f1bb9acb754210246afe2f33019926865ca2` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe35ccf1be62bc13f2f259ace624db10c3d527135` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe41cd2dcc63eb63a9d9e62f2a3d9b49e6d0c0a1d` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe660b4dc23430bdf2ec30b961fcaf6ccac8276a3` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe69544ff3e19179969222e7192173a1b9273fd90` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe774bc668d300e3ac157e405149aaff89eed1df6` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe902cd939a0605001257a5719b4d6d5478b490b4` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeb52759b7e94d0c4aeeda2e21475e6bc3aabf43b` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xebc15d318379d46542459b0dd922afe30db2292b` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeca1d16a120fc96fe33cfeb64adca70b678dfb8b` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf17c0edcaa28371e9c8012d7699bf40ecf0f58d1` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf6351b2dcf0110e76c71c1d319af2f410454b6f3` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d4cc7f154cdced6cb2b14f1bb09ca92688ecad` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/aoxN2WzhSM74tsJUct0C/uploads/M1TsQVTqUghMuZSes4wu/Certora - Formal Verification.pdf](https://3131394583-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaoxN2WzhSM74tsJUct0C%2Fuploads%2FM1TsQVTqUghMuZSes4wu%2FCertora%20-%20Formal%20Verification.pdf) | Certora | Audit | 2026-04 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |
| [spaces/aoxN2WzhSM74tsJUct0C/uploads/jP4Ej0FXvClHiADGwKLd/Certora - Audit #3.pdf](https://3131394583-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaoxN2WzhSM74tsJUct0C%2Fuploads%2FjP4Ej0FXvClHiADGwKLd%2FCertora%20-%20Audit%20%233.pdf) | Certora | Audit | 2026-02 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |
| [spaces/aoxN2WzhSM74tsJUct0C/uploads/KNrnqGyTv1VPM2rbBIp0/Certora - Audit #2.pdf](https://3131394583-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaoxN2WzhSM74tsJUct0C%2Fuploads%2FKNrnqGyTv1VPM2rbBIp0%2FCertora%20-%20Audit%20%232.pdf) | Certora | Audit | 2026-01 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 5 | high |
| [spaces/aoxN2WzhSM74tsJUct0C/uploads/PKsYColQZJy0e2AlTX7K/Three Sigma - Audit #1.pdf](https://3131394583-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaoxN2WzhSM74tsJUct0C%2Fuploads%2FPKsYColQZJy0e2AlTX7K%2FThree%20Sigma%20-%20Audit%20%231.pdf) | Three Sigma | Audit | 2026-01 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21181] spaces/aoxN2WzhSM74tsJUct0C/uploads/M1TsQVTqUghMuZSes4wu/Certora - Formal Verification.pdf — matched: Extracted 4 contracts from scope section and file paths. Audit date from 'February 23rd, 2026 to April 9th, 2026' using end date.
- [21182] spaces/aoxN2WzhSM74tsJUct0C/uploads/jP4Ej0FXvClHiADGwKLd/Certora - Audit #3.pdf — matched: Extracted from scope section and findings. Audit date from project timeline: February 23rd to February 27th, 2026.
- [21183] spaces/aoxN2WzhSM74tsJUct0C/uploads/KNrnqGyTv1VPM2rbBIp0/Certora - Audit #2.pdf — matched: Scope includes all files in saturn-organization/saturn-yield-dollar/src/* and saturn-organization/saturn-dollar/src/*. Contracts explicitly mentioned: USDat, sUSDat, StakedUSDat, WithdrawalQueueERC721, TokenizedSTRC, IWithdrawalQueueERC721.
- [21184] spaces/aoxN2WzhSM74tsJUct0C/uploads/PKsYColQZJy0e2AlTX7K/Three Sigma - Audit #1.pdf — matched: Scope table lists 4 files: USDat.sol, StakedUSDat.sol, WithdrawalQueue.sol, TokenizedSTRC.sol. Audit dates: 30/12/2025 to 31/12/2025 and 9/01/2026 to 12/01/2026. End date used.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/aoxN2WzhSM74tsJUct0C/uploads/M1TsQVTqUghMuZSes4wu/Certora - Formal Verification.pdf | USDat | own proxy deployment | USDat (proxy) (selected) `0x23238f20b894f29041f48d88ee91131c395aaa71` — deployed 2026-03-10 23:24:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/M1TsQVTqUghMuZSes4wu/Certora - Formal Verification.pdf | StakedUSDat | unmatched — not counted | — | listed in scope and detailed findings | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/M1TsQVTqUghMuZSes4wu/Certora - Formal Verification.pdf | WithdrawalQueueERC721 | unmatched — not counted | — | listed in scope and detailed findings | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/M1TsQVTqUghMuZSes4wu/Certora - Formal Verification.pdf | StrcPriceOracle | unmatched — not counted | — | mentioned in scope and threat model | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/jP4Ej0FXvClHiADGwKLd/Certora - Audit #3.pdf | USDat | own proxy deployment | USDat (proxy) (selected) `0x23238f20b894f29041f48d88ee91131c395aaa71` — deployed 2026-03-10 23:24:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/jP4Ej0FXvClHiADGwKLd/Certora - Audit #3.pdf | StakedUSDat | unmatched — not counted | — | listed in scope and findings | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/jP4Ej0FXvClHiADGwKLd/Certora - Audit #3.pdf | WithdrawalQueueERC721 | unmatched — not counted | — | listed in scope and findings | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/jP4Ej0FXvClHiADGwKLd/Certora - Audit #3.pdf | StrcPriceOracle | unmatched — not counted | — | mentioned in scope description | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/KNrnqGyTv1VPM2rbBIp0/Certora - Audit #2.pdf | USDat | own proxy deployment | USDat (proxy) (selected) `0x23238f20b894f29041f48d88ee91131c395aaa71` — deployed 2026-03-10 23:24:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/KNrnqGyTv1VPM2rbBIp0/Certora - Audit #2.pdf | sUSDat | unmatched — not counted | — | mentioned as yield-bearing vault token in protocol overview | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/KNrnqGyTv1VPM2rbBIp0/Certora - Audit #2.pdf | StakedUSDat | unmatched — not counted | — | listed in scope via src/* pattern and mentioned in findings | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/KNrnqGyTv1VPM2rbBIp0/Certora - Audit #2.pdf | WithdrawalQueueERC721 | unmatched — not counted | — | listed in scope via src/* pattern and mentioned in findings | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/KNrnqGyTv1VPM2rbBIp0/Certora - Audit #2.pdf | TokenizedSTRC | unmatched — not counted | — | mentioned in protocol overview and findings (I-01) | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/KNrnqGyTv1VPM2rbBIp0/Certora - Audit #2.pdf | IWithdrawalQueueERC721 | unmatched — not counted | — | mentioned in finding I-03 | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/PKsYColQZJy0e2AlTX7K/Three Sigma - Audit #1.pdf | USDat | own proxy deployment | USDat (proxy) (selected) `0x23238f20b894f29041f48d88ee91131c395aaa71` — deployed 2026-03-10 23:24:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/PKsYColQZJy0e2AlTX7K/Three Sigma - Audit #1.pdf | StakedUSDat | unmatched — not counted | — | listed in scope table | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/PKsYColQZJy0e2AlTX7K/Three Sigma - Audit #1.pdf | WithdrawalQueue | unmatched — not counted | — | listed in scope table | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/PKsYColQZJy0e2AlTX7K/Three Sigma - Audit #1.pdf | TokenizedSTRC | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 122 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (4 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 14 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: unique_name=4

Fork inheritance lineage and inherited audits are included when available.
