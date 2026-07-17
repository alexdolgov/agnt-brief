# Agentic Audit Brief: Singularity Finance

## Project Overview

- Project: Singularity Finance (`singularity-finance`)
- Website: [https://singularityfinance.ai/](https://singularityfinance.ai/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.292Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: base, ethereum
- Contract surface: 164 unique implementations (256 raw deployments)
- DeFi Llama TVL: $4,251,071.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 43 project-authored contract(s) across 2 chain(s); 4 ERC4626 vaults, 6 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 8 common project-authored base contract(s) (nonblockinglzapp, lzapp, clonable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 537; live-surface contracts included: 256 (105 live, 151 unknown).
- Excluded by liveness: 281 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/15 (46.7%)
- Deployed-live implementations: 15 of 164 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/16
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 148
- Unique implementations: 164
- Raw deployments: 256
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 7 | 43.8% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DynaVault | unknown | base | n/a | 8 deployments: base [`0x000bd9b6b6104ec9a360e323b42e0fad7128a771`](./contracts/base-8453/0x000bd9b6b6104ec9a360e323b42e0fad7128a771/); base `0x620b2f171825e9be731532b3ddcee161abe6e660`; base `0x9a3fba281b004882497d29b863c244619f2574b7`; base `0xa37f48577a9141bd94e7d6a2c976852c77d2baa2`; base `0xc0cf88750b5323e5f08626483cff5e7d546ca30d`; base `0xc6b3345612ad9f385d5c8ffd1ece98f7318ecf52`; base `0xd8147edf1e00fa717ae0c3d6aa6fa270e8554ed0`; base `0xddfdce3f69d5287a55e476e2facb9c6252afc64c` | ✅ Audited |
| DynaVaultLib | core_logic | base | n/a | 8 deployments: base [`0x3b94afa809b113ef118c6d4ffc009fdf1a51ee08`](./contracts/base-8453/0x3b94afa809b113ef118c6d4ffc009fdf1a51ee08/); base `0x4c3df500989df0f6670b99018811b94d591cc5a0`; base `0x6c331b1f8028a2b9cee2fc83169acc26e6a2e7c5`; base `0x8c38cc2e23cac44640d260cf45b864e8da1d8a22`; base `0xaee26e4806acebf827a6bfc85a855d3dc6b74adc`; base `0xbde3a6a26eb44701d3874d67ea9530bc6c084399`; base `0xbec6da78d6102b7a1542887357099f8214366014`; base `0xfece3c717046e101997ca0351bb1698203888597` | ✅ Audited |
| DynaVaultManager | unknown | base | n/a | 12 deployments: base [`0x30cb8e3b9c79b2f7304aefe89eb39de380c58273`](./contracts/base-8453/0x30cb8e3b9c79b2f7304aefe89eb39de380c58273/); base `0x478675aa4121c07825167bbb25a44aadd22bef7f`; base `0x4c168f4cc5a9c648f985b363bd528f21d6b198dd`; base `0x57dcc5558eb76acd922f402ba900beaca885c406`; base `0x67aaf2fa4420fb0922da630315734d69f99ea1dc`; base `0x84f0fe6e62670dedf9a3e0aa8065b1a536c2b843`; base `0x95cf606f7e499549d83bd3c8a1e5d97fdf36688b`; base `0xac18003cc118160e381c44979ba3dd63b52fae77`; base `0xc3bad1194fd89babc3250cb423b20d51a75250ac`; base `0xc9572eba0edb16a61a1eb0ae9271ceb01c0fca53`; base `0xdf34fca020cff534eb712617bc5159105add1915`; base `0xf461d8525077487611d3a1db2a55b8901c2da673` | ✅ Audited |
| VaultConfigLib | core_logic | base | n/a | 6 deployments: base [`0x3ce426bb2fcb9e1300bbe03e2d34d7b3b7347db5`](./contracts/base-8453/0x3ce426bb2fcb9e1300bbe03e2d34d7b3b7347db5/); base `0x44cd559979cfb1bff88c782fde15c3ad22c6ed6b`; base `0x587a91b2712870009a102b87e4bf86f5ccd52cbb`; base `0x7b7ee31dfb5f5e88bb8428ddb0687e0e28baedd2`; base `0xb198eede7371e60bcd7b90e9058f8255b20bdd0c`; base `0xbe93d93402efdb54613026fe31e6a297851fddfe` | ✅ Audited |
| VaultFeesLib | unknown | base | n/a | 6 deployments: base [`0x31b57a0e39661f63b80b545081e63b0c809817ff`](./contracts/base-8453/0x31b57a0e39661f63b80b545081e63b0c809817ff/); base `0x388184017b9006f3e24b3f7f94e113737902e5ae`; base `0x6535166b69aebd2bd8fa713c843ac176fee9150b`; base `0x9e71e460adcf46f5cbabdebd0fd21fc191bc1ca6`; base `0xb09b886efde5d3ad6af898d16de9178c87ec4be7`; base `0xb130375b543bd919d85351b73636439c28d90db6` | ✅ Audited |
| VaultManagerLib | unknown | base | n/a | 7 deployments: base [`0x1faecedeefba515a88093601d07ea759f08e53e1`](./contracts/base-8453/0x1faecedeefba515a88093601d07ea759f08e53e1/); base `0x30efd61d74a7c8aa87bcdfddd01041d00697f4ce`; base `0x7b273c267b7de25811883d69d26bffaebf71c184`; base `0x957fb5e642d6fe412d0fbfe6baefdbc4f730ddf3`; base `0x96263113ae253b82a5345fb036a69dd5852a0a33`; base `0xa3e5c305d24864703e9c950206577b0925f8046a`; base `0xb420bbad4455d4115242d9ef9c78eff64b319524` | ✅ Audited |
| VaultManagerSimulatorLib | unknown | base | n/a | 7 deployments: base [`0x180fe2e50cd056e4c7aaa3c5954f2bdc6e8eb72a`](./contracts/base-8453/0x180fe2e50cd056e4c7aaa3c5954f2bdc6e8eb72a/); base `0x2989d5b5cd2a1d0735661067f9f9471f57851981`; base `0x620978615e37f2c494cb9fcc2f9981029533fb39`; base `0x79db859d7fe2b6ae89f19b031b3506a480cf0b70`; base `0x86a2642ea34f83a15b43eadaa28115b0b84f708f`; base `0xcccc9e2e0afdaacf791a41c46ad7cb54d01fe8e5`; base `0xd5c3a44b44fa7e1a6f8990dccf3f819a38d04601` | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PermissionedDynaVault | unknown | base | n/a | 11 deployments: base [`0x0c8886b089b303d183bdc4204d06559efc57270f`](./contracts/base-8453/0x0c8886b089b303d183bdc4204d06559efc57270f/); base `0x1631ca6543adcb61e2b9e30189c8477981258274`; base `0x1bf9785c13b9bd7a567470544035a27fdf68e2f1`; base `0x1cda1ffdfac2936765101ca24db187e48a9e5aea`; base `0x22d298c6ca8c1d102a11046966ad547d1f54f3cc`; base `0x4314e0a6e4bbe98426541e211208075886950008`; base `0x67b93f6676bd1911c5fae7ffa90fff5f35e14dcd`; base `0x6beb9298743b4f70c7bb607d222d501442e1a937`; base `0x8bb92d108d957810fc048d8aee346336925d507e`; base `0xbba62ab384db1cbf43410f841a89679860a1b6ae`; base `0xea7975c2fec1ae9e3058bb5f99d8e26dbc816811` | ⚠️ Unaudited |
| QueueLib | unknown | base | n/a | 5 deployments: base [`0x1a3fe06854d8295a31398c2df55dedca99ec2188`](./contracts/base-8453/0x1a3fe06854d8295a31398c2df55dedca99ec2188/); base `0x34e499baa66b6486436a4c77f311fc57b064a3eb`; base `0x48b1197dc8697ac86e2cce9e875a0b22ca3150f5`; base `0x57972f999170f8ec8b20b33fa161ebb320984232`; base `0xe5580280092d314d63b7b4431bdcf9a16ad1a1d4` | ⚠️ Unaudited |
| SDAOLockedStaking | unknown | base | n/a | 3 deployments: base [`0x138463ad46a81421e432311faa551c992c8e34d1`](./contracts/base-8453/0x138463ad46a81421e432311faa551c992c8e34d1/); base `0x28998e083133cdeece483335625b5b7c61682924`; base `0x40f67f6924f7934669728be9bebae56f9ed7e96b` | ⚠️ Unaudited |
| SFItoken | token | ethereum | n/a | [`0x7636d8722fdf7cd34232a915e48e96aa3eb386bf`](./contracts/ethereum-1/0x7636d8722fdf7cd34232a915e48e96aa3eb386bf/) | ⚠️ Unaudited |
| VaultGovernanceLib | unknown | base | n/a | 5 deployments: base [`0x1f9e5478cf6e324a8d62cf12e6d68e8e0fd3f367`](./contracts/base-8453/0x1f9e5478cf6e324a8d62cf12e6d68e8e0fd3f367/); base `0x363bfdec645723df948295c71334dbcb3f0a2968`; base `0x4703bd3c87e19281075545bb61e1daba1bb6fc73`; base `0xb4d05063a4cf978446181002cb524fb3bcfe9d94`; base `0xbc84cbc5f9d3a6b1c9efbe571b1419f7a3696ee0` | ⚠️ Unaudited |
| VaultRouterLib | unknown | base | n/a | 7 deployments: base [`0x01ab836ff146f70938c1a7defc8c8e40622da0f9`](./contracts/base-8453/0x01ab836ff146f70938c1a7defc8c8e40622da0f9/); base `0x7a64f66bb28c28f7d3ddf37139cd146b4caa7e4e`; base `0x8e6b29e5313764b38019705f082211199fccdf7f`; base `0xabb735b095dec18248ae17f9abbc71a8120b5605`; base `0xb245ab0d2e9dfb99b1212eb3d7732c22591557a2`; base `0xc0976fda753939926436178349fd50d9914d59fa`; base `0xd3109f87bd553b83f64a2972effb034bfed8d2a0` | ⚠️ Unaudited |
| VaultSimulator | unknown | base | n/a | 10 deployments: base [`0x2dc0002c9ecc0e7baf7bda035aa653b1e3cf1cb7`](./contracts/base-8453/0x2dc0002c9ecc0e7baf7bda035aa653b1e3cf1cb7/); base `0xa065ae1ec61f06abf5d6377ed4fccc6912b27be9`; base `0xa6ae67098fab8a78732572b6142dcb4f44161f09`; base `0xa700aab4eba3482da2163ef8df01779f7a64e9fb`; base `0xaaebd176aa1115d714b201af59ca079b9831c4a8`; base `0xb8019542931286d1aebaef1165fe1f639e62b0a3`; base `0xd6aaaec9ee40f11a59524b1e564a89c5a7fcd8dc`; base `0xe7414c7ded14a73a3e20b68345225eaf5b3ffbe2`; base `0xf0d657868c8b38921bd301b3eb9c13c1b2db0e05`; base `0xfe2a33ede7739129e83a67fcede2e262364d373e` | ⚠️ Unaudited |
| VaultStrategiesLib | unknown | base | n/a | 5 deployments: base [`0x0b43bcef4af1e9c52dcca264b78c1dd778d1777b`](./contracts/base-8453/0x0b43bcef4af1e9c52dcca264b78c1dd778d1777b/); base `0x2214959df5eb012754e19c7af5819a85c5629d23`; base `0x38df9f77e687576fdb888e569709cc26d5e73e28`; base `0xc77df5462492a1cda83b83972a9f9efe0b391571`; base `0xf22bd338ccb6446a25920d1858e50d709b663e9e` | ⚠️ Unaudited |
| VaultTokensLib | unknown | base | n/a | 7 deployments: base [`0x07b3dd2b07613ef877cf6392a971d00e36fe2ee2`](./contracts/base-8453/0x07b3dd2b07613ef877cf6392a971d00e36fe2ee2/); base `0x1b841eac4ac3f7a704e7ce096039e5baaf145812`; base `0x2f67f861c8e4ac32036e4d247eef04abbe5bb650`; base `0x4e41ae763baf3a98f30b9b6db8f7640ca90ee89c`; base `0x5deda0f7dfedc1fdbde16fb0b97fc312ce8d0a08`; base `0x7e81c4022018cae002f70817aa9a4035f7daf5c5`; base `0x86aab402770f64d4924abb83a3b975f894f0835e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (148)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x00123acecba54b5fe9de677285fcfc812f5d9fbc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x03a10dbc88cd07b58c1f54eb0103965df21c6973` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x03af7132a865e588c8416c53d521665fb41a19d1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x045f5b6f885e4cc939776cfdbfced9d768b9c0e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x04e8c4f02b939cedc87ccdb2d387c94836c155ec` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x051c386e1bb49affa75a77306d13b8e47cfc0849` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x077e53ee1dca9aee1288b33aa452766dbf2be178` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x09291aaed7924c5ef78255809e7369fc715e3257` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0a4f8dc5237b841e986bc36ee91b35a7b681b0fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0a53bddefd38b29e13dcfe1ee0bc1296c990a9cd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0ad4e227867d9b319b8a3c10c5a01ff625f8c01e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0ae165ac50e78019da056a01e528ff817f6f3f4c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b1e6d09b57844a8307aafb9853c79bb05be5cdd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0cecb9d88a8be0f07a4cbe291c2c7140109b2fcb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d27441b00832b55268c2d20876bcc7ff84a3739` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x10da116182f570672f2544503702371bea1010b2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1954d138acf647992117f7870a99496d4246b3f2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1aeff12540e0965b48f29cb6b3133d08051ee60b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1be1adc5a230178146033d3bd3ccdb8709ae5b89` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1bfcb41c048a654680e092e2e11c8866045b338f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1fdd44a6ad82b2e697a75d41379c4d5ef58efa6a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2327c7e996fd8edf3e89175a0896ba17a119ea49` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x290a9a85e117a056559ec0a243dc107484ee6add` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x29c66bad734d084cc7b1d03c262dfaccac96c28f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2cebb51be7ceea16b1f274f06d65137ffa898e58` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2dac28ddaf2755619284a0f9535827243fbd35b0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x328600d69dc3bec8d2198516abf0a027020019dd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3403866af34a1db6c98964c0346a2e6426bcdab4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x354533bcd70223ca2935083d40e4ecd3db066564` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x35717340ece0af8295386ece150c915d1c45d294` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x35cc57412ff8a5fbab99efb07c2feb5973067e1c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x366d5cdaa29331f7a4e51cbd60f13073da9b7ed8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x37c1222d5f5e896fa8f1d192feeaa7ba1b34ca3e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d26d7e1cfbe1f0c730673a2d255d212d79288b5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3f1e134a79d90d11f57e1901e0c4e11d4439ed81` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x400df36aa5f56da6313cca193bd21ad69bd1757c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x408c0c87ca68f3f6015374d03f5b20125e3cd91c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4135464894fef303ed6ea832fb70cef70a460859` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x44921e42017316f89c1dedd70a3a017d4c5162c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x45527da489ef5ea43d40ce89aa49413296cba856` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x45585acb41829139c7606ed6c4c5eaec2dc50029` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x491b3625de24c15379c770c1b92b4d7a82f45d38` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4b368c0eec30d133a75689b1dd859211ee8ff0aa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4be4465a2d017e12ce995037c959440c41a2ea27` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5062f9a49d0fbd82d8f8ec7fa8c7c0131b256b9a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x52796d470c439246c259f43c94e62998ec5fc3c5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5352bf8958507a23991635f9d72f9e955dae4bf0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x54678214a6e69e9fe84ae1f16c88056587e46851` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x56a87d08f42256140c49718f2d4c5540f7946ab6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x58c225c669b28e6cb2646b0c85ccb8b664dbd7f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5950273e4f52ce98e7cfffa9188feac4bc550ef9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5af1d3a0bbd4614db7d85f8496357bcb0967bf3c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5af6181ff3ac6c032268a6bd5714cb43e28741fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5b7b0e7122f0c449133242fac52f1a0262bb5f43` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5b81203ca025715b5be292a102a87626e9402faa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x636a7f9811b326e1081d8fee03ef7f47948bd476` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x661d1c564a98aa6e2df5787e0ac0c447be9f1822` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6726a616d92d02d21739057a5e1fedf5a58fa386` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6792a715bb05c26db96495348c1a12cc5bf72970` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x68ba6f5b2212b2bef99648660c740ddc1cead92e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6ab825bb2b5f03e188ac681f1346b7871d5ffcca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x70ecd24fd83bfa485b8e5a04f724d0f38bb927bf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x71d588d345205c1d68637930b89b6c14e1c31b6d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x71f4dd24f5b5af931a69251c808072517a7f6d29` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7293de195ce31796b2de251fd66aeaf24dfdaef0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x76ce228add817d30279b594c08de9862f72faf9d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x78096b76903228d9c6f7556f1b8dee77dcd49e4e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7969f0ed03ede760d45ebb91cf5c6f539af62661` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7b62a32219108fd9d7e9bca2b2897b1abf7f47d3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7bcb318b014e579e82ff411c16ff1ee123e6ce4a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7f8e355c67f23c7989ea134e880ae41127793111` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x801ebeaf8f5047b6ee91a3f9e927b80d1cbb64aa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x808aa8f3d64e0e48f53ad5b6ceeae63c35cae78e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8098142fabc82c42bda54bbf6ee334c40418b516` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8298cf2f777a3d24c8d2803a345ab5735984cda9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x837714eca91d6a8422b836db4af6aff162746842` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x84a619701b87fe8a954ac9f05cbe17c05b8e2562` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x85941b32b3436f92c5dbf24f7b90863de2cff3d3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x872ad3f6913a720bc3d2b6e18444633445faf871` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x88ed2d9806f07f61205ce7b7e13d10798d3ece6f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8b2ba923b7483536eb764a5301949547fbdd0d63` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8b7009018880bdbe0d676c14f58d3eaa3c9e467d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x900f80149a74d1a5c28c160bdeeed0a7bde7c487` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x910543bd26d879151df0da5b62834dcf9ebed2b7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x927c76d5beca29b1a21ce31416876f940b21bde4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x942d21ebd144765e3bcf295886d44b684df1e1b5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x95b40fabe6997347b0ba981888ae52ac80e3b969` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x95be5cf4acb136ed8e014bb6647859a922d62ea6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x967d71ac15435343183f3db4b54d9d9fb2b6d070` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x96f5c36c05f10e8fe67cd132a8b9f051c2570424` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9913668270f6e93406716bcd1b6bfe4d0afd3687` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x992fda2cc141d446e1b363fe2fd870407f3d05e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x99bebaae5018b41663ef20a7f330c8de413c3d7c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9d0df237bc36a431f201e9ca08d4333c56209ba2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f2c74c090ca8f2388db7b77f2b2194877b34d14` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f30f2328b81fa73c834b717c92ebb3c070acb8a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa06c743b8032aa0c9d137b7e9a00653a3f46d6a3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa2601d8839563b7bcbdef904066b6e4e8d9b9a9f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa789dd8988c5687a3e24a06fe8df419ac1d35464` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa7e0f3b2a939d7481d6d1f3c1ef81df188c5df3a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xabd1702b5c8ef21fda8c001fbb50c011b85010e3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xacdee40c1f85bd516c023079a419d45a31e63e43` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xadee3e58917a8539fea0ced3bfeecd11525ea244` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xafdeaaf87357ee2d9f0829076fa1820e553839b3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb03503c91dcde1a20229369c6820e4251980ce3e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb40d9c68f279e4eaf489ef95ca30634c164233fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbb2b209ca066d27a86f3d9470d517d65b6656277` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbc4042a17f64cc2bbb3daf9dc764c31540bd4490` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe2ecbf2b7d243d1c467a6b0974be8a9ca449de1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc09ed6fa536814585299a22ae3eb9c45cbc54308` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc35b012752405c9aa1a91669fd6291f3b06ed218` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc52c24143f39efe7f7750f26ce73f4a0ef3265b4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc961506ff85e83914c55685cd544b3788cabd952` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcad808d263f54884bcb6df34470c1a259a991b2c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcbf202921689e1d070e10efee6701032934f58e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xceeda1e21ca61e07847e691bc80bf6d1750c82f2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd0364b1e5166dc508ccb132276098e08bc9f07fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd21fa003078bb574e96b18cdcbbe029f4de0c94f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd42b734aed65c122e432b3356befd7fe383dd733` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd7a3e4fefb5d80ec83f31c26de730c64d2a97150` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd7be5d515607baa4cf2e35d8a0b8a7562b919722` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xddbc27af6a98886f3c447d1382569b57fdc71c49` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xddfbfa26457aebee2946f208604fdc42502d59c5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe11a2344eceaf5705a258374d71d083392af1a18` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe3e4a0bd665546326738c1afecf2688cf0d73f32` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe4392fa991d56a16746850810efa10539e0a67a5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe46434220ab7826c184d331f4e31c7d305e83011` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe4e1e6f96f445c6708158f60095bb46aa846b0e4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe50489374f5df79340cbe7122e0c242ad2efd359` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe77b9ffc6644c0bab8b7d059f6a4dfa1ec6def73` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe9bbdc6856120d5fe68614712b124b2792cafb55` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xea6daae1a8233b010f79f7bf7adf862a409464fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xec043d8e413e937dc76b0d9cf766c3beccea8fa1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xecf9843ee88b76c503e9bf089f6cec40042050e4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xee0586790ee4bf8d8b6d4dbec372422dc343ba54` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xee1ac9b19e03cc928deea881e9ce637ecece638b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf022616f8f3e0e814b9e4fa0440d47c78914664f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf2b4ef4c1513b734677e2687254a21f4a5da6ac9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf4a4e9fb6583ea73c820aaabb92739b1846f441d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf5738b4ad2f8302b926676692a0c09603d930b42` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf6c9e5138e33dea52e4fb8cfb1b871dc89c22195` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf6e0dbba58cb01856bb3d90ef7e62fbb0f7d0eb1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf778956227f04a6e193eec17febab67838ae8e6a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf7bda13d40b4ee280e8439c10ee5a74b364364b8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf97cee6e60f63ac96007300bbef87d44bfca3620` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfbbb3f255f4964b52500ab425d4597105806aeaa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfdad14303ea4c7b0a8be7c453a9bfbc57208986d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xffdc0b02b00df3ec7367a630bc3ddec5bb21922b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [paladinsec.co/projects/singularitydao](https://paladinsec.co/projects/singularitydao) | Paladin | Audit | 2025-05 | aging | Direct | contract_name | 7 | n/a |
| [hacken.io/audits/singularitydao](https://hacken.io/audits/singularitydao) | Hacken | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x0c8886b089b303d183bdc4204d06559efc57270f`](./contracts/base-8453/0x0c8886b089b303d183bdc4204d06559efc57270f/) | PermissionedDynaVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1a3fe06854d8295a31398c2df55dedca99ec2188`](./contracts/base-8453/0x1a3fe06854d8295a31398c2df55dedca99ec2188/) | QueueLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x138463ad46a81421e432311faa551c992c8e34d1`](./contracts/base-8453/0x138463ad46a81421e432311faa551c992c8e34d1/) | SDAOLockedStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7636d8722fdf7cd34232a915e48e96aa3eb386bf`](./contracts/ethereum-1/0x7636d8722fdf7cd34232a915e48e96aa3eb386bf/) | SFItoken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1f9e5478cf6e324a8d62cf12e6d68e8e0fd3f367`](./contracts/base-8453/0x1f9e5478cf6e324a8d62cf12e6d68e8e0fd3f367/) | VaultGovernanceLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x01ab836ff146f70938c1a7defc8c8e40622da0f9`](./contracts/base-8453/0x01ab836ff146f70938c1a7defc8c8e40622da0f9/) | VaultRouterLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2dc0002c9ecc0e7baf7bda035aa653b1e3cf1cb7`](./contracts/base-8453/0x2dc0002c9ecc0e7baf7bda035aa653b1e3cf1cb7/) | VaultSimulator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0b43bcef4af1e9c52dcca264b78c1dd778d1777b`](./contracts/base-8453/0x0b43bcef4af1e9c52dcca264b78c1dd778d1777b/) | VaultStrategiesLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x07b3dd2b07613ef877cf6392a971d00e36fe2ee2`](./contracts/base-8453/0x07b3dd2b07613ef877cf6392a971d00e36fe2ee2/) | VaultTokensLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 148 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=7

Zero-match audit list:

- [2479] hacken.io/audits/singularitydao

Fork inheritance lineage and inherited audits are included when available.
